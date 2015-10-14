.class Lcom/urbanairship/actions/ActionRunner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/Action;

.field final synthetic b:Lcom/urbanairship/actions/ActionArguments;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/urbanairship/actions/ActionCompletionCallback;

.field final synthetic e:Lcom/urbanairship/actions/ActionRunner;


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunner$1;->a:Lcom/urbanairship/actions/Action;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunner$1;->b:Lcom/urbanairship/actions/ActionArguments;

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/Action;->a(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunner$1;->e:Lcom/urbanairship/actions/ActionRunner;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunner$1;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/actions/ActionRunner$1;->d:Lcom/urbanairship/actions/ActionCompletionCallback;

    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionRunner;->a(Lcom/urbanairship/actions/ActionRunner;Landroid/os/Handler;Lcom/urbanairship/actions/ActionCompletionCallback;Lcom/urbanairship/actions/ActionResult;)V

    return-void
.end method
