.class public final enum Lcom/heyzap/internal/Constants$AuctionType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuctionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$AuctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$AuctionType;

.field public static final enum CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

.field public static final enum MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/heyzap/internal/Constants$AuctionType;

    const-string v1, "MONETIZATION"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$AuctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AuctionType;->MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;

    new-instance v0, Lcom/heyzap/internal/Constants$AuctionType;

    const-string v1, "CROSS_PROMO"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/internal/Constants$AuctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$AuctionType;->CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/heyzap/internal/Constants$AuctionType;

    sget-object v1, Lcom/heyzap/internal/Constants$AuctionType;->MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/internal/Constants$AuctionType;->CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/heyzap/internal/Constants$AuctionType;->$VALUES:[Lcom/heyzap/internal/Constants$AuctionType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AuctionType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/heyzap/internal/Constants$AuctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$AuctionType;

    return-object p0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$AuctionType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->$VALUES:[Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$AuctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$AuctionType;

    return-object v0
.end method
