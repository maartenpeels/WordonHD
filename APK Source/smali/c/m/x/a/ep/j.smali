.class final Lc/m/x/a/ep/j;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/ep/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/ep/e;)Landroid/app/Notification;
    .locals 17

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->a:Landroid/content/Context;

    move-object v1, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    move-object v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->b:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->c:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->h:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->f:Landroid/widget/RemoteViews;

    move-object v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->i:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->d:Landroid/app/PendingIntent;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->e:Landroid/app/PendingIntent;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->g:Landroid/graphics/Bitmap;

    move-object v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->n:I

    move v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->o:I

    move v12, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc/m/x/a/ep/e;->p:Z

    move v13, v0

    new-instance v14, Landroid/app/Notification$Builder;

    invoke-direct {v14, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v15, v2, Landroid/app/Notification;->when:J

    invoke-virtual/range {v14 .. v16}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v14, v2, Landroid/app/Notification;->icon:I

    iget v15, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v1, v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v14, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v14, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v14, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v14, v2, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v1, v6, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v6, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->ledARGB:I

    iget v14, v2, Landroid/app/Notification;->ledOnMS:I

    iget v15, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v1, v6, v14, v15}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v6, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v9, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11, v12, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method
