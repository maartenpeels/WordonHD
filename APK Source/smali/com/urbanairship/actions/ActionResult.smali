.class public Lcom/urbanairship/actions/ActionResult;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/urbanairship/actions/ActionResult$Status;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/actions/ActionResult;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionResult;->a:Ljava/lang/Exception;

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/actions/ActionResult;->c:Lcom/urbanairship/actions/ActionResult$Status;

    return-void

    :cond_0
    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->a:Lcom/urbanairship/actions/ActionResult$Status;

    goto :goto_0
.end method

.method public static a()Lcom/urbanairship/actions/ActionResult;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    sget-object v1, Lcom/urbanairship/actions/ActionResult$Status;->a:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, v2, v2, v1}, Lcom/urbanairship/actions/ActionResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method static a(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    invoke-direct {v0, v1, v1, p0}, Lcom/urbanairship/actions/ActionResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/ActionResult$Status;->d:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, v1, p0, v2}, Lcom/urbanairship/actions/ActionResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    new-instance v0, Lcom/urbanairship/actions/ActionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/urbanairship/actions/ActionResult$Status;->a:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-direct {v0, p0, v1, v2}, Lcom/urbanairship/actions/ActionResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/urbanairship/actions/ActionResult$Status;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public final d()Lcom/urbanairship/actions/ActionResult$Status;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionResult;->c:Lcom/urbanairship/actions/ActionResult$Status;

    return-object v0
.end method
