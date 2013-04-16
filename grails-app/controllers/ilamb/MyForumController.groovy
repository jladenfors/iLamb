package ilamb

class MyForumController {

    def lambService

    def index() {
        def all = lambService.getPosts(params.lambname ? params.lambname : "%");
        [posts: all]
    }

    def create(){
        if (params.message){
            ForumPost fp = new ForumPost();
            fp.message = params.message;
            fp.headline = params.headline;
            fp.username = params.username;
            fp.save();
            redirect(action: "index", params: [lambname: params.username])
        }
    }


}
