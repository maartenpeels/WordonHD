.class Lcom/urbanairship/actions/ActionRunner$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/ActionCompletionCallback;

.field final synthetic b:Lcom/urbanairship/actions/ActionResult;

.field final synthetic c:Lcom/urbanairship/actions/ActionRunner;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionRunner;Lcom/urbanairship/actions/ActionCompletionCallback;Lcom/urbanairship/actions/ActionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunner$3;->c:Lcom/urbanairship/actions/ActionRunner;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunner$3;->a:Lcom/urbanairship/actions/ActionCompletionCallback;

    iput-object p3, p0, Lcom/urbanairship/actions/ActionRunner$3;->b:Lcom/urbanairship/actions/ActionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunner$3;->a:Lcom/urbanairship/actions/ActionCompletionCallback;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunner$3;->b:Lcom/urbanairship/actions/ActionResult;

    invoke-interface {v0, v1}, Lcom/urbanairship/actions/ActionCompletionCallback;->a(Lcom/urbanairship/actions/ActionResult;)V

    return-void
.end method
