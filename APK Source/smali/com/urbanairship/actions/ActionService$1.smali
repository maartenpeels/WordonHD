.class Lcom/urbanairship/actions/ActionService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/ActionService;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionService;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/ActionService$1;->a:Lcom/urbanairship/actions/ActionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/actions/ActionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->a:Lcom/urbanairship/actions/ActionService;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->a(Lcom/urbanairship/actions/ActionService;)I

    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->a:Lcom/urbanairship/actions/ActionService;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->b(Lcom/urbanairship/actions/ActionService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->a:Lcom/urbanairship/actions/ActionService;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionService$1;->a:Lcom/urbanairship/actions/ActionService;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionService;->c(Lcom/urbanairship/actions/ActionService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    :cond_0
    return-void
.end method
