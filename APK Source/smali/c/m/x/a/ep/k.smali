.class final Lc/m/x/a/ep/k;
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
    .locals 18

    new-instance v1, Lc/m/x/a/ep/m;

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->a:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->b:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->c:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->h:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->f:Landroid/widget/RemoteViews;

    move-object v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->i:I

    move v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->d:Landroid/app/PendingIntent;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->e:Landroid/app/PendingIntent;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->g:Landroid/graphics/Bitmap;

    move-object v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->n:I

    move v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->o:I

    move v13, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc/m/x/a/ep/e;->p:Z

    move v14, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lc/m/x/a/ep/e;->k:Z

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lc/m/x/a/ep/e;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lc/m/x/a/ep/m;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->q:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/ep/b;

    move-object/from16 v0, p0

    iget v0, v0, Lc/m/x/a/ep/b;->a:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/b;->b:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/b;->c:Landroid/app/PendingIntent;

    move-object v5, v0

    invoke-virtual {v1, v3, v4, v5}, Lc/m/x/a/ep/m;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object v2, v0

    instance-of v2, v2, Lc/m/x/a/ep/d;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object/from16 p0, v0

    check-cast p0, Lc/m/x/a/ep/d;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/d;->e:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc/m/x/a/ep/d;->g:Z

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/d;->f:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/d;->a:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lc/m/x/a/ep/m;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lc/m/x/a/ep/m;->a()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object v2, v0

    instance-of v2, v2, Lc/m/x/a/ep/f;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object/from16 p0, v0

    check-cast p0, Lc/m/x/a/ep/f;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/f;->e:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc/m/x/a/ep/f;->g:Z

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/f;->f:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/f;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lc/m/x/a/ep/m;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object v2, v0

    instance-of v2, v2, Lc/m/x/a/ep/c;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    move-object/from16 p0, v0

    check-cast p0, Lc/m/x/a/ep/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/c;->e:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc/m/x/a/ep/c;->g:Z

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/c;->f:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/c;->a:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/ep/c;->b:Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc/m/x/a/ep/c;->c:Z

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lc/m/x/a/ep/m;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
