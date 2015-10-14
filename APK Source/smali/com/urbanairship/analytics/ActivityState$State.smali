.class final enum Lcom/urbanairship/analytics/ActivityState$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/urbanairship/analytics/ActivityState$State;

.field public static final enum b:Lcom/urbanairship/analytics/ActivityState$State;

.field public static final enum c:Lcom/urbanairship/analytics/ActivityState$State;

.field private static final synthetic d:[Lcom/urbanairship/analytics/ActivityState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/analytics/ActivityState$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/ActivityState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    new-instance v0, Lcom/urbanairship/analytics/ActivityState$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/analytics/ActivityState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/ActivityState$State;->b:Lcom/urbanairship/analytics/ActivityState$State;

    new-instance v0, Lcom/urbanairship/analytics/ActivityState$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/analytics/ActivityState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->b:Lcom/urbanairship/analytics/ActivityState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/urbanairship/analytics/ActivityState$State;->d:[Lcom/urbanairship/analytics/ActivityState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/analytics/ActivityState$State;
    .locals 1

    const-class v0, Lcom/urbanairship/analytics/ActivityState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/analytics/ActivityState$State;

    return-object p0
.end method

.method public static values()[Lcom/urbanairship/analytics/ActivityState$State;
    .locals 1

    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->d:[Lcom/urbanairship/analytics/ActivityState$State;

    invoke-virtual {v0}, [Lcom/urbanairship/analytics/ActivityState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/analytics/ActivityState$State;

    return-object v0
.end method
