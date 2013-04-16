package ilamb

class ForumPost {

    String headline;
    String message;
    String username;
    
    static mapping = {
        message type: "text"
    }
    
    
}
