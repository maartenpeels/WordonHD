.class public final Lc/m/x/a/gv/aj$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/m/x/a/gv/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/aj;


# direct methods
.method private constructor <init>(Lc/m/x/a/gv/aj;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/m/x/a/gv/aj;B)V
    .locals 0

    invoke-direct {p0, p1}, Lc/m/x/a/gv/aj$b;-><init>(Lc/m/x/a/gv/aj;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v0}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->b(Lc/m/x/a/gv/aj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->c(Lc/m/x/a/gv/aj;)Z

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1, p1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;Ljava/lang/Exception;)Ljava/lang/Exception;

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->e(Lc/m/x/a/gv/aj;)V

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v0}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->b(Lc/m/x/a/gv/aj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->c(Lc/m/x/a/gv/aj;)Z

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1, p1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->e(Lc/m/x/a/gv/aj;)V

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v0}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->b(Lc/m/x/a/gv/aj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->c(Lc/m/x/a/gv/aj;)Z

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->d(Lc/m/x/a/gv/aj;)Z

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    invoke-static {v1}, Lc/m/x/a/gv/aj;->e(Lc/m/x/a/gv/aj;)V

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()Lc/m/x/a/gv/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/m/x/a/gv/aj$b;->b(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/m/x/a/gv/aj$b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-direct {p0}, Lc/m/x/a/gv/aj$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
