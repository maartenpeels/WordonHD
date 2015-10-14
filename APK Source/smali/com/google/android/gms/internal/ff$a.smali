.class final Lcom/google/android/gms/internal/ff$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic Dh:Lcom/google/android/gms/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ff;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ff;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    check-cast p0, Lcom/google/android/gms/internal/ff$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ff$b;->dx()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ff$b;->unregister()V

    :goto_0
    return-void

    .restart local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-static {v0}, Lcom/google/android/gms/internal/ff;->a(Lcom/google/android/gms/internal/ff;)Lcom/google/android/gms/internal/fg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fg;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    .restart local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ff;->a(Lcom/google/android/gms/internal/ff;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ff;->a(Lcom/google/android/gms/internal/ff;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-static {v0}, Lcom/google/android/gms/internal/ff;->a(Lcom/google/android/gms/internal/ff;)Lcom/google/android/gms/internal/fg;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fg;->O(I)V

    goto :goto_0

    .restart local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ff$a;->Dh:Lcom/google/android/gms/internal/ff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ff;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    check-cast p0, Lcom/google/android/gms/internal/ff$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ff$b;->dx()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ff$b;->unregister()V

    goto :goto_0

    .restart local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    check-cast p0, Lcom/google/android/gms/internal/ff$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ff$b;->eN()V

    goto :goto_0

    .restart local p0    # "this":Lcom/google/android/gms/internal/ff$a;, "Lcom/google/android/gms/internal/ff<TT;>.a;"
    :cond_5
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
