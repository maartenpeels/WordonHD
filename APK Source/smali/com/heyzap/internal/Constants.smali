.class public Lcom/heyzap/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/Constants$CreativeType;,
        Lcom/heyzap/internal/Constants$AuctionType;,
        Lcom/heyzap/internal/Constants$MediationCancellationReason;,
        Lcom/heyzap/internal/Constants$MediationFetchMode;,
        Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;,
        Lcom/heyzap/internal/Constants$AdUnit;
    }
.end annotation


# static fields
.field public static DEFAULT_TAG:Ljava/lang/String;

.field public static FETCH_DISPLAY_TTL:Ljava/lang/Integer;

.field public static MINIMUM_SUPPORTED_SDK_VERSION:I

.field public static NEEDED_RECEIVER:Ljava/lang/String;

.field public static REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field public static SNAKE_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0x9

    sput v0, Lcom/heyzap/internal/Constants;->MINIMUM_SUPPORTED_SDK_VERSION:I

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/internal/Constants;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 14
    const-string v0, "com.heyzap.sdk.ads.PackageAddedReceiver"

    sput-object v0, Lcom/heyzap/internal/Constants;->NEEDED_RECEIVER:Ljava/lang/String;

    .line 45
    const/16 v0, 0x1388

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/internal/Constants;->FETCH_DISPLAY_TTL:Ljava/lang/Integer;

    .line 46
    const-string v0, "default"

    sput-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    .line 47
    const-string v0, "com.example.android.snake"

    sput-object v0, Lcom/heyzap/internal/Constants;->SNAKE_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method
