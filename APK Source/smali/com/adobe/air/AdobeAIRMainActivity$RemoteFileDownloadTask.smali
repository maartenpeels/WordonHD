.class Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;
.super Landroid/os/AsyncTask;
.source "AdobeAIRMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AdobeAIRMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteFileDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIRMainActivity;


# direct methods
.method private constructor <init>(Lcom/adobe/air/AdobeAIRMainActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/AdobeAIRMainActivity;Lcom/adobe/air/AdobeAIRMainActivity$1;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;-><init>(Lcom/adobe/air/AdobeAIRMainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 271
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 272
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 274
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 264
    check-cast p1, Ljava/util/Properties;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->onPostExecute(Ljava/util/Properties;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "NewUIPercentage"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    # getter for: Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I
    invoke-static {v1}, Lcom/adobe/air/AdobeAIRMainActivity;->access$100(Lcom/adobe/air/AdobeAIRMainActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    # setter for: Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I
    invoke-static {v1, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->access$102(Lcom/adobe/air/AdobeAIRMainActivity;I)I

    .line 308
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    # getter for: Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I
    invoke-static {v1}, Lcom/adobe/air/AdobeAIRMainActivity;->access$300(Lcom/adobe/air/AdobeAIRMainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    # getter for: Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I
    invoke-static {v2}, Lcom/adobe/air/AdobeAIRMainActivity;->access$100(Lcom/adobe/air/AdobeAIRMainActivity;)I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->access$202(Lcom/adobe/air/AdobeAIRMainActivity;Z)Z

    .line 309
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->this$0:Lcom/adobe/air/AdobeAIRMainActivity;

    # invokes: Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForDefaultActivity()V
    invoke-static {v0}, Lcom/adobe/air/AdobeAIRMainActivity;->access$400(Lcom/adobe/air/AdobeAIRMainActivity;)V

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
