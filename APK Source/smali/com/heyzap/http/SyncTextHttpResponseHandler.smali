.class public Lcom/heyzap/http/SyncTextHttpResponseHandler;
.super Lcom/heyzap/http/TextHttpResponseHandler;
.source "SyncTextHttpResponseHandler.java"


# instance fields
.field public error:Ljava/lang/Throwable;

.field public responseStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/heyzap/http/TextHttpResponseHandler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->responseStr:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->error:Ljava/lang/Throwable;

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/http/SyncTextHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->responseStr:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p3, p0, Lcom/heyzap/http/SyncTextHttpResponseHandler;->responseStr:Ljava/lang/String;

    .line 28
    return-void
.end method
