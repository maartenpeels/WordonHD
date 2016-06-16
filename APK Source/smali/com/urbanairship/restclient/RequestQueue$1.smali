.class Lcom/urbanairship/restclient/RequestQueue$1;
.super Lcom/urbanairship/restclient/AsyncHandler;


# instance fields
.field final synthetic a:Lcom/urbanairship/restclient/Request;

.field final synthetic b:Lcom/urbanairship/restclient/AsyncHandler;

.field final synthetic c:Lcom/urbanairship/restclient/RequestQueue;


# direct methods
.method constructor <init>(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->c:Lcom/urbanairship/restclient/RequestQueue;

    iput-object p2, p0, Lcom/urbanairship/restclient/RequestQueue$1;->a:Lcom/urbanairship/restclient/Request;

    iput-object p3, p0, Lcom/urbanairship/restclient/RequestQueue$1;->b:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->b:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->a(I)V

    return-void
.end method

.method public final a(Lcom/urbanairship/restclient/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->c:Lcom/urbanairship/restclient/RequestQueue;

    iget-object v1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->a:Lcom/urbanairship/restclient/Request;

    invoke-static {v0, v1}, Lcom/urbanairship/restclient/RequestQueue;->a(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->b:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->a(Lcom/urbanairship/restclient/Response;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->c:Lcom/urbanairship/restclient/RequestQueue;

    iget-object v1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->a:Lcom/urbanairship/restclient/Request;

    invoke-static {v0, v1}, Lcom/urbanairship/restclient/RequestQueue;->a(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->b:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->a(Ljava/lang/Exception;)V

    return-void
.end method
