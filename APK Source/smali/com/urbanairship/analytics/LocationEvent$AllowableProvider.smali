.class public final enum Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

.field public static final enum b:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

.field public static final enum c:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

.field public static final enum d:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

.field private static final synthetic e:[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->a:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->b:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->c:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->d:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->a:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->b:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->c:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->d:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    aput-object v1, v0, v5

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->e:[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;
    .locals 1

    const-class v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    return-object p0
.end method

.method public static values()[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;
    .locals 1

    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->e:[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v0}, [Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    return-object v0
.end method
