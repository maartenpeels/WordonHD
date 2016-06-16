.class Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;
.super Ljava/lang/Object;
.source "FetchRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/FetchRequestStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCallback"
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;

    .line 83
    iput-object p2, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;

    .line 93
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    .line 95
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
