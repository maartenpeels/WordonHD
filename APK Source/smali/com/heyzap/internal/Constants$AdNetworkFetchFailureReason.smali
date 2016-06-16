.class public final enum Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdNetworkFetchFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum INTERNAL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum SKIPPED:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum TIMEOUT:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

.field public static final enum UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "BAD_CREDENTIALS"

    invoke-direct {v0, v1, v7}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "REMOTE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "CONFIGURATION_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "SKIPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->SKIPPED:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    new-instance v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->SKIPPED:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->$VALUES:[Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->$VALUES:[Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    return-object v0
.end method
