.class public abstract Lcom/heyzap/http/TextHttpResponseHandler;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/heyzap/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/heyzap/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    if-nez p0, :cond_0

    move-object v0, v3

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "TextHttpResponseHandler"

    const-string v2, "Encoding response into string failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/heyzap/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/heyzap/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/heyzap/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/heyzap/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/heyzap/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 82
    return-void
.end method
