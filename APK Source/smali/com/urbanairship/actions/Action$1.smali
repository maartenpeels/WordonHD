.class Lcom/urbanairship/actions/Action$1;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/Action$ActivityResult;


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/Action$ActivityResult;

    const-string v0, "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, p1, v0}, Lcom/urbanairship/actions/Action$ActivityResult;->a(Lcom/urbanairship/actions/Action$ActivityResult;ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/Action$ActivityResult;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->a:Lcom/urbanairship/actions/Action$ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
