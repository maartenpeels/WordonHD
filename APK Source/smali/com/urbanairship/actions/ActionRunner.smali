.class public Lcom/urbanairship/actions/ActionRunner;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/urbanairship/actions/ActionRunner;


# instance fields
.field private b:Lcom/urbanairship/actions/ActionRegistry;

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/urbanairship/actions/ActionRunner;

    invoke-static {}, Lcom/urbanairship/actions/ActionRegistry;->a()Lcom/urbanairship/actions/ActionRegistry;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/actions/ActionRunner;-><init>(Lcom/urbanairship/actions/ActionRegistry;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/urbanairship/actions/ActionRunner;->a:Lcom/urbanairship/actions/ActionRunner;

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/actions/ActionRegistry;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunner;->b:Lcom/urbanairship/actions/ActionRegistry;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunner;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Lcom/urbanairship/actions/ActionRunner;
    .locals 1

    sget-object v0, Lcom/urbanairship/actions/ActionRunner;->a:Lcom/urbanairship/actions/ActionRunner;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/actions/ActionRunner;Landroid/os/Handler;Lcom/urbanairship/actions/ActionCompletionCallback;Lcom/urbanairship/actions/ActionResult;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/urbanairship/actions/ActionRunner$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/urbanairship/actions/ActionRunner$3;-><init>(Lcom/urbanairship/actions/ActionRunner;Lcom/urbanairship/actions/ActionCompletionCallback;Lcom/urbanairship/actions/ActionResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2, p3}, Lcom/urbanairship/actions/ActionCompletionCallback;->a(Lcom/urbanairship/actions/ActionResult;)V

    goto :goto_0
.end method

.method private static b()Landroid/os/Handler;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/actions/ActionRunner;->a(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;)V
    .locals 7

    invoke-static {}, Lcom/urbanairship/actions/ActionRunner;->b()Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/urbanairship/actions/ActionRunner;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/urbanairship/actions/ActionRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/actions/ActionRunner$2;-><init>(Lcom/urbanairship/actions/ActionRunner;Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;Landroid/os/Handler;Lcom/urbanairship/actions/ActionCompletionCallback;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunner;->b:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/ActionRegistry;->a(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->c:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->a(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a()Lcom/android/internal/util/Predicate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a()Lcom/android/internal/util/Predicate;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Action will not be run. Registry predicate returned false."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->b:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->a(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/Action;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/actions/Action;->a(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionArguments;->b()Lcom/urbanairship/actions/Situation;

    move-result-object v1

    goto :goto_1
.end method
