.class public final enum Lcom/heyzap/internal/Constants$MediationCancellationReason;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationCancellationReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$MediationCancellationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum DISPLAY_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum ERROR:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum FETCH_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum FINISHED:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum INTERNAL:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum UNKNOWN:Lcom/heyzap/internal/Constants$MediationCancellationReason;

.field public static final enum USER_INITIATED:Lcom/heyzap/internal/Constants$MediationCancellationReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->UNKNOWN:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "FETCH_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->FETCH_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "DISPLAY_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->DISPLAY_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->ERROR:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "USER_INITIATED"

    invoke-direct {v0, v1, v7}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->USER_INITIATED:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "INTERNAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->INTERNAL:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    const-string v1, "FINISHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$MediationCancellationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->FINISHED:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/heyzap/internal/Constants$MediationCancellationReason;

    sget-object v1, Lcom/heyzap/internal/Constants$MediationCancellationReason;->UNKNOWN:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/internal/Constants$MediationCancellationReason;->FETCH_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/internal/Constants$MediationCancellationReason;->DISPLAY_TIMEOUT:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/internal/Constants$MediationCancellationReason;->ERROR:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/internal/Constants$MediationCancellationReason;->USER_INITIATED:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/internal/Constants$MediationCancellationReason;->INTERNAL:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/internal/Constants$MediationCancellationReason;->FINISHED:Lcom/heyzap/internal/Constants$MediationCancellationReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->$VALUES:[Lcom/heyzap/internal/Constants$MediationCancellationReason;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$MediationCancellationReason;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$MediationCancellationReason;

    return-object p0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$MediationCancellationReason;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/heyzap/internal/Constants$MediationCancellationReason;->$VALUES:[Lcom/heyzap/internal/Constants$MediationCancellationReason;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$MediationCancellationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$MediationCancellationReason;

    return-object v0
.end method
