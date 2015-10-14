.class public Lcom/urbanairship/util/NotificationIDGenerator;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/urbanairship/util/NotificationIDGenerator;->a:I

    const/16 v0, 0x28

    sput v0, Lcom/urbanairship/util/NotificationIDGenerator;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    const-string v3, "count"

    const-string v0, "count"

    sget v0, Lcom/urbanairship/util/NotificationIDGenerator;->a:I

    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/urbanairship/util/NotificationIDGenerator;->a:I

    sget v2, Lcom/urbanairship/util/NotificationIDGenerator;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const-string v1, "Incrementing notification id count"

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {v3, v0}, Lcom/urbanairship/util/NotificationIDGenerator;->a(Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "Resetting notification id count"

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    const-string v1, "count"

    sget v1, Lcom/urbanairship/util/NotificationIDGenerator;->a:I

    invoke-static {v3, v1}, Lcom/urbanairship/util/NotificationIDGenerator;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.notificationidgenerator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
