.class Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;
.super Ljava/lang/Object;
.source "FetchStateManager.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/adapter/FetchStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->delegate:Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;

    .line 60
    iput-object p2, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/adapter/FetchStateManager$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;)Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->delegate:Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;

    return-object v0
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback$1;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method
