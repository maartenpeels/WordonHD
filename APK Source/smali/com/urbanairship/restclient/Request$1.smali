.class Lcom/urbanairship/restclient/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/restclient/AsyncHandler;

.field final synthetic b:Lcom/urbanairship/restclient/Request;

.field final synthetic c:Lcom/urbanairship/restclient/Request;


# direct methods
.method constructor <init>(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;Lcom/urbanairship/restclient/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/restclient/Request$1;->c:Lcom/urbanairship/restclient/Request;

    iput-object p2, p0, Lcom/urbanairship/restclient/Request$1;->a:Lcom/urbanairship/restclient/AsyncHandler;

    iput-object p3, p0, Lcom/urbanairship/restclient/Request$1;->b:Lcom/urbanairship/restclient/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/urbanairship/restclient/Request$BackgroundRequest;

    iget-object v1, p0, Lcom/urbanairship/restclient/Request$1;->c:Lcom/urbanairship/restclient/Request;

    iget-object v2, p0, Lcom/urbanairship/restclient/Request$1;->a:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/restclient/Request$BackgroundRequest;-><init>(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/urbanairship/restclient/Request;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/urbanairship/restclient/Request$1;->b:Lcom/urbanairship/restclient/Request;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/urbanairship/restclient/Request$BackgroundRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to execute request."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
