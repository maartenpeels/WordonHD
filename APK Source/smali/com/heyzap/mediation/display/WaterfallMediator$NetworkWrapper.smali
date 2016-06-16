.class Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/display/WaterfallMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkWrapper"
.end annotation


# instance fields
.field public final fetchResultFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public final networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public final networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

.field public rejected:Z

.field public rejectionCause:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            "Lcom/heyzap/mediation/display/DisplayConfig$Network;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->rejected:Z

    .line 221
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    .line 222
    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 223
    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/WaterfallMediator$1;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    return-void
.end method

.method private setRejected(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->rejected:Z

    .line 228
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->rejectionCause:Ljava/lang/String;

    .line 229
    return-void
.end method
