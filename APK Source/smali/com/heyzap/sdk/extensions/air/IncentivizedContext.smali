.class public Lcom/heyzap/sdk/extensions/air/IncentivizedContext;
.super Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
.source "IncentivizedContext.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "incentivized"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v1, "show"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/ShowIncentivizedAdFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/ShowIncentivizedAdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "fetch"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/FetchIncentivizedAdFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/FetchIncentivizedAdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "available"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdAvailableFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "setUserIdentifier"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdSetUserIdentifierFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdSetUserIdentifierFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0
.end method
