.class public Lcom/turbomanage/httpclient/HttpGet;
.super Lcom/turbomanage/httpclient/HttpRequest;
.source "HttpGet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/turbomanage/httpclient/HttpRequest;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 18
    sget-object v0, Lcom/turbomanage/httpclient/HttpMethod;->GET:Lcom/turbomanage/httpclient/HttpMethod;

    iput-object v0, p0, Lcom/turbomanage/httpclient/HttpGet;->httpMethod:Lcom/turbomanage/httpclient/HttpMethod;

    .line 19
    return-void
.end method
