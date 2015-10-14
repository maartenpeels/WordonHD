.class public Lcom/urbanairship/push/CustomPushNotificationBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/push/PushNotificationBuilder;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->f()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->e:I

    invoke-static {}, Lcom/urbanairship/UAirship;->f()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->g:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->a:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->b:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->c:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->d:I

    if-nez v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The CustomPushNotificationBuilder object contains an invalid identifier (value of 0). layoutIconId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutSubjectId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to build notification. NotificationBuilder missing required parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->c:I

    invoke-static {}, Lcom/urbanairship/UAirship;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->d:I

    invoke-virtual {v2, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->b:I

    iget v3, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->e:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->g()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :cond_5
    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->h:Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->h:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->a()I

    move-result v0

    goto :goto_0
.end method
