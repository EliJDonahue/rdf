using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using RDFWebApp.Models;
using Aras.IOM;
using System.Xml;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Text;

namespace RDFWebApp.Controllers
{
    [RoutePrefix("api/calls")]
    public class ArasCallsController : ApiController
    {
        ArasCall call = new ArasCall
        {
            Name = "Default",
            Action = "RDF Transform Query Execution",
            ItemType = "Method",
            Body = "",
            Inn = new Innovator(_Login(ArasCall.USER, ArasCall.PWD, ArasCall.URL, ArasCall.DB))
        };

        private static HttpServerConnection _Login(string usr, string pwd, string url, string db)
        {
            HttpServerConnection conn = IomFactory.CreateHttpServerConnection(url, db, usr, Innovator.ScalcMD5(pwd));
            Item logResult = conn.Login();
            if (logResult.isError())
                throw new Exception("Failed to login to Innovator");

            return conn;
        }

        private string AmlToJSON(string aml)
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(aml);

            return JsonConvert.SerializeXmlNode(doc);
        }

        [Route("{id}", Name = "ExecuteQuery")]
        public HttpResponseMessage GetCall(string id)
        {
            //Item req = call.Inn.newItem(call.ItemType, call.Action);
            //req.setProperty("qd_id", id);
            //Item res = req.apply();

            Innovator inn = call.Inn;
            Item res = inn.applyMethod("RDF Transform Query Execution", "<qd_id>" + id + "</qd_id>");

            if (res.isError())
                return Request.CreateResponse(HttpStatusCode.BadRequest, res.getErrorString());

            string result = res.ToString();

            result = result.Replace("xmlns:SOAP-ENV=\"", "");
            result = result.Replace("http://schemas.xmlsoap.org/soap/envelope/\" ", "");
            result = result.Replace("<SOAP-ENV:Envelope xmlns:i18n=\"http://www.aras.com/I18N\"><SOAP-ENV:Body><Result>", "");
            result = result.Replace("</Result></SOAP-ENV:Body></SOAP-ENV:Envelope>", "");

            result = result.Replace("{\"root\":", "");
            result = result.Substring(0, result.Length - 1);

            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(result, Encoding.UTF8, "application/json");

            return response;
        }

        //[Route("")]
        //public IHttpActionResult GetThisCall(string type, string action)
        //{
        //    if (type != null)
        //        call.ItemType = type;

        //    if (action != null)
        //        call.Action = action;

        //    Item req = call.Inn.newItem(call.ItemType, call.Action);
        //    Item res = req.apply();

        //    if (res.isError())
        //        return Content(HttpStatusCode.BadRequest, res.getErrorString());

        //    return Ok(AmlToJSON(res.ToString()));
        //}

        //[Route("")]
        //public IHttpActionResult GetThisCall(string name)
        //{
        //    call.Name = name;
        //    call.ItemType = "Method";
        //    call.Action = "";
        //    call.Body = "";

        //    Item req = call.Inn.newItem(call.ItemType, call.Action);
        //    Item res = req.apply();

        //    if (res.isError())
        //        return Content(HttpStatusCode.BadRequest, res.getErrorString());

        //    return Ok(AmlToJSON(res.ToString()));
        //}
    }
}
