.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvailabilityListener"
.end annotation


# instance fields
.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zoneToUnitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 326
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->zoneToUnitMap:Ljava/util/Map;

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->zoneToUnitMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 332
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    return-void

    .line 333
    :cond_1
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "Unavailable for unknown reason."

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    goto :goto_0
.end method
