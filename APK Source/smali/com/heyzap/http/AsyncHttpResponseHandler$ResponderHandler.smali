.class Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final mResponder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/heyzap/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Ljava/lang/ref/WeakReference;

    .line 134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/http/AsyncHttpResponseHandler;

    .line 139
    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/heyzap/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 142
    :cond_0
    return-void
.end method
