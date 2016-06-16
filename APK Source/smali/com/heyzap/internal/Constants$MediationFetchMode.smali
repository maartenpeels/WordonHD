.class public final enum Lcom/heyzap/internal/Constants$MediationFetchMode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationFetchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$MediationFetchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$MediationFetchMode;

.field public static final enum HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

.field public static final enum MEDIATION:Lcom/heyzap/internal/Constants$MediationFetchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/heyzap/internal/Constants$MediationFetchMode;

    const-string v1, "MEDIATION"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/internal/Constants$MediationFetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->MEDIATION:Lcom/heyzap/internal/Constants$MediationFetchMode;

    new-instance v0, Lcom/heyzap/internal/Constants$MediationFetchMode;

    const-string v1, "HEYZAP"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/internal/Constants$MediationFetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/heyzap/internal/Constants$MediationFetchMode;

    sget-object v1, Lcom/heyzap/internal/Constants$MediationFetchMode;->MEDIATION:Lcom/heyzap/internal/Constants$MediationFetchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/internal/Constants$MediationFetchMode;->HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->$VALUES:[Lcom/heyzap/internal/Constants$MediationFetchMode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$MediationFetchMode;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/heyzap/internal/Constants$MediationFetchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/Constants$MediationFetchMode;

    return-object p0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$MediationFetchMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->$VALUES:[Lcom/heyzap/internal/Constants$MediationFetchMode;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$MediationFetchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$MediationFetchMode;

    return-object v0
.end method
