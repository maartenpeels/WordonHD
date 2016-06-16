.class public Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext$Factory;
.super Ljava/lang/Object;
.source "HeyzapExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    const-string v1, "interstitial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/heyzap/sdk/extensions/air/InterstitialContext;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/extensions/air/InterstitialContext;-><init>(Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Lcom/heyzap/sdk/extensions/air/VideoContext;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/extensions/air/VideoContext;-><init>(Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string v1, "incentivized"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v0, Lcom/heyzap/sdk/extensions/air/IncentivizedContext;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/extensions/air/IncentivizedContext;-><init>(Ljava/lang/String;)V

    .line 58
    :cond_2
    const-string v1, "main"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    new-instance v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;-><init>(Ljava/lang/String;)V

    .line 62
    :cond_3
    return-object v0
.end method
