.class final enum Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;
.super Ljava/lang/Enum;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/alebianco/air/extensions/analytics/functions/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum EVENT:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum EXCEPTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum SOCIAL:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum TIMING:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum TRANSACTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

.field public static final enum VIEW:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->VIEW:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v4}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->EVENT:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "EXCEPTION"

    invoke-direct {v0, v1, v5}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->EXCEPTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "TIMING"

    invoke-direct {v0, v1, v6}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->TIMING:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "SOCIAL"

    invoke-direct {v0, v1, v7}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->SOCIAL:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    new-instance v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    const-string v1, "TRANSACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->TRANSACTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    .line 330
    const/4 v0, 0x6

    new-array v0, v0, [Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    sget-object v1, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->VIEW:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v1, v0, v3

    sget-object v1, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->EVENT:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v1, v0, v4

    sget-object v1, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->EXCEPTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v1, v0, v5

    sget-object v1, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->TIMING:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v1, v0, v6

    sget-object v1, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->SOCIAL:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->TRANSACTION:Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    aput-object v2, v0, v1

    sput-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->$VALUES:[Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

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
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 330
    const-class v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    return-object p0
.end method

.method public static values()[Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->$VALUES:[Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    invoke-virtual {v0}, [Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    return-object v0
.end method
