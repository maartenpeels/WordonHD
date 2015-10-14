.class final Lcom/google/android/gms/internal/fg$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic Dt:Lcom/google/android/gms/internal/fg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-static {v0}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fg;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fg;->b(Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/fg$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/fg$b;->em()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fg;->b(Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/fg$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/fg$b;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/internal/fg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fg$a;->Dt:Lcom/google/android/gms/internal/fg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fg;->b(Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/fg$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/fg$b;->dG()Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/fg$a;
    check-cast p0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-interface {p0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local p0    # "this":Lcom/google/android/gms/internal/fg$a;
    :cond_1
    const-string v0, "GmsClientEvents"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
