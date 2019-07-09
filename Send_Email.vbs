NameSpace = "http://schemas.microsoft.com/cdo/configuration/" 
Set Email = CreateObject("CDO.Message") 
Email.From = "*" 
Email.To = "*;*" 
Email.Subject = "The directory of Git Seed Files" 
Email.Textbody = "You can get the Git Seed Files details in the attachment" 
Email.AddAttachment "E:\marzu\log\Detail.txt" 
With Email.Configuration.Fields 
.Item(NameSpace&"sendusing") = 2 
.Item(NameSpace&"smtpserver") = "*" 
.Item(NameSpace&"smtpserverport") = 25
.Update 
End With 
Email.Send
#used for sending e-mail. Just need to replace the wildcard by the mail address.