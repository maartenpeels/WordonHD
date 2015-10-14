.class public Lcom/heyzap/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/heyzap/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heyzap/http/AsyncHttpRequest;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/http/AsyncHttpRequest;

    .line 32
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/heyzap/http/AsyncHttpRequest;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heyzap/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/http/AsyncHttpRequest;

    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/http/AsyncHttpRequest;

    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/heyzap/http/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/heyzap/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/heyzap/http/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 58
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/heyzap/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 60
    :cond_1
    return v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
