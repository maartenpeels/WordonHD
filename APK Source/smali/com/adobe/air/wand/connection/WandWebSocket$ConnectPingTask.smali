.class Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;
.super Landroid/os/AsyncTask;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectPingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 807
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    .line 810
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 811
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 812
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 817
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    # getter for: Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$1000(Lcom/adobe/air/wand/connection/WandWebSocket;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "connectPingFlag"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 823
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 803
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
