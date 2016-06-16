.class Lcom/heyzap/sdk/ads/MediationTestActivity$1;
.super Ljava/util/TreeMap;
.source "MediationTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V
    .locals 3

    .prologue
    .line 40
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 42
    const-string v0, "adcolony"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AdColony"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "admob"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AdMob"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "applovin"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "AppLovin"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "chartboost"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Chartboost"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "facebook"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Facebook Audience Network"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "unityads"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "UnityAds"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "vungle"

    new-instance v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const-string v2, "Vungle"

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
