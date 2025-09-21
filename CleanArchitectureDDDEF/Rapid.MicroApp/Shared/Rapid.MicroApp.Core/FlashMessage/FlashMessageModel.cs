﻿namespace Rapid.MicroApp.Core.FlashMessage
{

    /// <summary>
    /// The FlashMessageModel class represents an individual flash message.
    /// </summary>
    public class FlashMessageModel
    {

        /// <summary>
        /// Gets / sets if the message contains raw HTML. If set to true, the title will not be rendered and the contents of the message parameter will
        /// be written directly to the output.
        /// </summary>
        public bool IsHtml { get; set; }

        public string Title { get; set; }
        public string Message { get; set; }
        public string KeyName { get; set; }
        public FlashMessageType Type { get; set; }

        public FlashMessageModel()
        {
            IsHtml = false;
            Type = FlashMessageType.Info;
        }
    }

    /// <summary>
    /// The FlashMessageType enum indicates the type of flash message.
    /// </summary>
    public enum FlashMessageType : byte
    {
        Info,
        Warning,
        Danger,
        Confirmation,
    }
}
