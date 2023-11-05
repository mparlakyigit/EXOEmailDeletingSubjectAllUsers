# Tüm Kullanıcıların E-Posta Kutularından Konu Başlığına Göre E-Posta Silme İşlemi
Bu PowerShell betiği tüm kullanıcıların e-posta kutularına ulaşan e-postaların, konu başlığına göre silinmesini sağlamaktadır. Örneğin; Bu e-postalar genellikle zararlı bir link (phishing) veya zararlı bir ek (malware) içeriyor olabililir. Yada Muhasebe departmanından yanlışlıkla tüm kullanıcılara gönderilmiş,tüm personele ait maaş bordrosu olabilir. 
# Tüm Kullanıcıların E-Posta Kutularından Konu Başlığına Göre E-Posta Silme İşlemi Nasıl çalışır ? 
![1](https://github.com/mparlakyigit/EXOEmailDeletingSubjectAllUsers/assets/53214224/472516d7-d4dd-477f-ac61-ba292de47fe1)
- Öncelikle PowerShell yönetici olarak çalıştıralım.
- PowerShell üzerinde EXOEmailDeletingSubjectAllUsers indirdiğimimiz PowerShell betiğinin bulunduğu dizine geçelim.
- PowerShell betiğimizi .\EXOEmailDeletingSubjectAllUsers.ps1 şeklinde çalıştıralım.
- PowerShell betiğimiz bizden Global Admin kullanıcı bilgilerimizi, Kullanıcımıza ait parola ve son olarak silinecek olan konu başlığını isteyecektir.

![2](https://github.com/mparlakyigit/EXOEmailDeletingSubjectAllUsers/assets/53214224/dde7fc02-4ba7-4413-86de-6afc48f63f80)

- Global Admin bilgilerimizi girelim.
- Global Admin Hesabımıza ait parolayı girelim.
- Silinecek E-Posta Konusunu girelim. (Konuyu mümkün mertebe boşlukları v.s olduğu gibi giriniz.)
  Not:Girdiğiniz konu başlığı daha önceden atılmışsa ve bu atılan mail kalması gereken bir mailse ilgili mailde silinecektir. 

![3](https://github.com/mparlakyigit/EXOEmailDeletingSubjectAllUsers/assets/53214224/48eaa730-491f-412a-8ffc-f0fe697661cc)

Yukarıdaki görselde olduğu gibi tüm kullancıların e-posta kutularına gönderdiğim (TestV1 All Mailbox) konu başlıklı mail ulaştı.


# Sonuç;
Aşağıdaki görselde olduğu gibi TestV1 All Mailbox gelen konu başlıklı e-postalar tüm kullanıcıların e-posta kutularından silindi.

![4](https://github.com/mparlakyigit/EXOEmailDeletingSubjectAllUsers/assets/53214224/b1f51cbf-1c99-4fae-997b-5078423f2718)

# Sorun giderme;
- PowerShell üzerinde betiği çalıştırmak istediğinizde bir hata alırsanız, aşağıdaki PowerShell script çalıştırın.
- Set-ExecutionPolicy Unrestricted
- Yine problem devam ederse Global admin kullanıcınızda MFA'yı geçici olarak devre dışı bırakın. 
  
