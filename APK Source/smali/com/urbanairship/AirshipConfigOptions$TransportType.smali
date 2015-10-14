.class public final enum Lcom/urbanairship/AirshipConfigOptions$TransportType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

.field public static final enum b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

.field public static final enum c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

.field private static final synthetic d:[Lcom/urbanairship/AirshipConfigOptions$TransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;

    const-string v1, "HELIUM"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/AirshipConfigOptions$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    new-instance v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;

    const-string v1, "GCM"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/AirshipConfigOptions$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    new-instance v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;

    const-string v1, "HYBRID"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/AirshipConfigOptions$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/urbanairship/AirshipConfigOptions$TransportType;

    sget-object v1, Lcom/urbanairship/AirshipConfigOptions$TransportType;->a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/AirshipConfigOptions$TransportType;->b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/AirshipConfigOptions$TransportType;->c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->d:[Lcom/urbanairship/AirshipConfigOptions$TransportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/AirshipConfigOptions$TransportType;
    .locals 1

    const-class v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/AirshipConfigOptions$TransportType;

    return-object p0
.end method

.method public static values()[Lcom/urbanairship/AirshipConfigOptions$TransportType;
    .locals 1

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->d:[Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, [Lcom/urbanairship/AirshipConfigOptions$TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/AirshipConfigOptions$TransportType;

    return-object v0
.end method
