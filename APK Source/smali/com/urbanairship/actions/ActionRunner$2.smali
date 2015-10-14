.class Lcom/urbanairship/actions/ActionRunner$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/urbanairship/actions/ActionArguments;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/urbanairship/actions/ActionCompletionCallback;

.field final synthetic e:Lcom/urbanairship/actions/ActionRunner;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionRunner;Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;Landroid/os/Handler;Lcom/urbanairship/actions/ActionCompletionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunner$2;->e:Lcom/urbanairship/actions/ActionRunner;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunner$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/actions/ActionRunner$2;->b:Lcom/urbanairship/actions/ActionArguments;

    iput-object p4, p0, Lcom/urbanairship/actions/ActionRunner$2;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/urbanairship/actions/ActionRunner$2;->d:Lcom/urbanairship/actions/ActionCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunner$2;->e:Lcom/urbanairship/actions/ActionRunner;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunner$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunner$2;->b:Lcom/urbanairship/actions/ActionArguments;

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/actions/ActionRunner;->b(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunner$2;->e:Lcom/urbanairship/actions/ActionRunner;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunner$2;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/actions/ActionRunner$2;->d:Lcom/urbanairship/actions/ActionCompletionCallback;

    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionRunner;->a(Lcom/urbanairship/actions/ActionRunner;Landroid/os/Handler;Lcom/urbanairship/actions/ActionCompletionCallback;Lcom/urbanairship/actions/ActionResult;)V

    return-void
.end method
