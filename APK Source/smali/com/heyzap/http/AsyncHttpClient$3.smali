.class Lcom/heyzap/http/AsyncHttpClient$3;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/http/AsyncHttpClient;->setEnableRedirects(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/http/AsyncHttpClient;

.field final synthetic val$enableRedirects:Z


# direct methods
.method constructor <init>(Lcom/heyzap/http/AsyncHttpClient;Z)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/heyzap/http/AsyncHttpClient$3;->this$0:Lcom/heyzap/http/AsyncHttpClient;

    iput-boolean p2, p0, Lcom/heyzap/http/AsyncHttpClient$3;->val$enableRedirects:Z

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/heyzap/http/AsyncHttpClient$3;->val$enableRedirects:Z

    return v0
.end method
