.class Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;
.super Ljava/lang/Object;
.source "FetchStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/adapter/FetchStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchStateWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;->value:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/heyzap/mediation/adapter/FetchStateManager$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method
