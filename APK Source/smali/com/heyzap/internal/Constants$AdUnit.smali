.class public final enum Lcom/heyzap/internal/Constants$AdUnit;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$AdUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$AdUnit;

.field public static final enum INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

.field public static final enum INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

.field public static final enum NATIVE:Lcom/heyzap/internal/Constants$AdUnit;

.field public static final enum UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

.field public static final enum VIDEO:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/heyzap/internal/Constants$AdUnit;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AdUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v0, Lcom/heyzap/internal/Constants$AdUnit;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/internal/Constants$AdUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v0, Lcom/heyzap/internal/Constants$AdUnit;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/heyzap/internal/Constants$AdUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v0, Lcom/heyzap/internal/Constants$AdUnit;

    const-string v1, "INCENTIVIZED"

    invoke-direct {v0, v1, v5}, Lcom/heyzap/internal/Constants$AdUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v0, Lcom/heyzap/internal/Constants$AdUnit;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v6}, Lcom/heyzap/internal/Constants$AdUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->NATIVE:Lcom/heyzap/internal/Constants$AdUnit;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->NATIVE:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v1, v0, v6

    sput-object v0, Lcom/heyzap/internal/Constants$AdUnit;->$VALUES:[Lcom/heyzap/internal/Constants$AdUnit;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$AdUnit;

    return-object p0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->$VALUES:[Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$AdUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method
