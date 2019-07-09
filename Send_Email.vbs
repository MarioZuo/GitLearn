NameSpace = "http://schemas.microsoft.com/cdo/configuration/" 
Set Email = CreateObject("CDO.Message") 
Email.From = "no-reply@configura.com" 
Email.To = "mario.zuo@configura.com;jokill.li@configura.com" 
Email.Subject = "The directory of Git Seed Files" 
Email.Textbody = "You can get the Git Seed Files details in the attachment" 
Email.AddAttachment "E:\marzu\log\Detail.txt" 
With Email.Configuration.Fields 
.Item(NameSpace&"sendusing") = 2 
.Item(NameSpace&"smtpserver") = "configura-com.mail.protection.outlook.com" 
.Item(NameSpace&"smtpserverport") = 25
.Update 
End With 
Email.Send