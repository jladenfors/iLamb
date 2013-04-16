import ilamb.ForumPost
import ilamb.MySecrets
import ilamb.User

class BootStrap {

    def init = { servletContext ->
        MySecrets ms = new MySecrets();
        ms.MyBankAccount = "1234-23423"
        ms.save();
                              
        new User([username: "jonas", password: "password".encodeAsMD5()]).save()
        new User([username: "nils", password: "smagodis".encodeAsMD5()]).save()
        new User([username: "anna", password: "Anakin".encodeAsMD5()]).save()
        new User([username: "hanna", password: "D.Draper".encodeAsMD5()]).save()
        new User([username: "olof", password: "LeanOn".encodeAsMD5()]).save()

        ForumPost fp = new ForumPost();
        fp.headline = "Jonas gästbok!";
        fp.message = "Välkommen till min gästbok skriv en kul kommentar!";
        fp.username = "jonas";
        fp.save();
        
    }
    def destroy = {
    }
}
