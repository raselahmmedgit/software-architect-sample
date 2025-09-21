using System;
using System.Collections.Generic;
using System.Text;

namespace Rapid.MicroApp.Core.Helpers
{
    public static class SmsTemplateHelper
    {
        public static string GetSmsTemplate(string url)
        {
            string template = $"You have been massege. {url}";
            return template;
        }
    }
}
