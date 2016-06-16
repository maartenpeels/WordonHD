.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncentiveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->lastIncentivizedDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    return-void
.end method
