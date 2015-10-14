.class public Lcom/heyzap/sdk/extensions/air/functions/ShowMediationTestSuite;
.super Ljava/lang/Object;
.source "ShowMediationTestSuite.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .prologue
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->startTestActivity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
