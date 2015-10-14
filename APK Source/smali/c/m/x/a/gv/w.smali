.class public final Lc/m/x/a/gv/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/x/a/gv/w$a;,
        Lc/m/x/a/gv/w$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lc/m/x/a/gv/w;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/w$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/m/x/a/gv/w;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/w;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lc/m/x/a/gv/w;->a:Landroid/content/Context;

    new-instance v0, Lc/m/x/a/gv/x;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc/m/x/a/gv/x;-><init>(Lc/m/x/a/gv/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lc/m/x/a/gv/w;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/m/x/a/gv/w;
    .locals 3

    sget-object v0, Lc/m/x/a/gv/w;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/m/x/a/gv/w;->g:Lc/m/x/a/gv/w;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/w;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/m/x/a/gv/w;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/m/x/a/gv/w;->g:Lc/m/x/a/gv/w;

    :cond_0
    sget-object v1, Lc/m/x/a/gv/w;->g:Lc/m/x/a/gv/w;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lc/m/x/a/gv/w;)V
    .locals 8

    const/4 v7, 0x0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/w;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-array v1, v1, [Lc/m/x/a/gv/w$a;

    iget-object v2, p0, Lc/m/x/a/gv/w;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lc/m/x/a/gv/w;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v7

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    move v4, v7

    :goto_1
    iget-object v0, v3, Lc/m/x/a/gv/w$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-object v0, v3, Lc/m/x/a/gv/w$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/w$b;

    iget-object v0, v0, Lc/m/x/a/gv/w$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lc/m/x/a/gv/w;->a:Landroid/content/Context;

    iget-object v6, v3, Lc/m/x/a/gv/w$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v4, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    move v5, v9

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v9

    :goto_2
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_3

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move v8, v9

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/m/x/a/gv/w$b;

    iget-object v3, v3, Lc/m/x/a/gv/w$b;->b:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v8, -0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v8, v3

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    move v3, v8

    goto :goto_4
.end method

.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    iget-object v1, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lc/m/x/a/gv/w$b;

    invoke-direct {v2, p2, p1}, Lc/m/x/a/gv/w$b;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->b:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->a:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move v13, v3

    :goto_0
    if-eqz v13, :cond_0

    const-string v3, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Resolving type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->c:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    if-eqz v10, :cond_b

    if-eqz v13, :cond_1

    const-string v3, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Action list: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    const/4 v9, 0x0

    move v14, v9

    move-object v15, v3

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_8

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc/m/x/a/gv/w$b;

    move-object v11, v0

    if-eqz v13, :cond_2

    const-string v3, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v16, "Matching against filter "

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    iget-object v0, v0, Lc/m/x/a/gv/w$b;->a:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v3, v11, Lc/m/x/a/gv/w$b;->c:Z

    if-eqz v3, :cond_4

    if-eqz v13, :cond_7

    const-string v3, "LocalBroadcastManager"

    const-string v9, "  Filter\'s target already added"

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v15

    :goto_2
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move-object v15, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_0

    :cond_4
    iget-object v3, v11, Lc/m/x/a/gv/w$b;->a:Landroid/content/IntentFilter;

    const-string v9, "LocalBroadcastManager"

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    if-eqz v13, :cond_5

    const-string v9, "LocalBroadcastManager"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "  Filter matched!  match=0x"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v15, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    iput-boolean v9, v11, Lc/m/x/a/gv/w$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v12

    throw v3

    :cond_6
    if-eqz v13, :cond_7

    packed-switch v3, :pswitch_data_0

    :try_start_1
    const-string v3, "unknown reason"

    :goto_4
    const-string v9, "LocalBroadcastManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v16, "  Filter did not match: "

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v3, v15

    goto :goto_2

    :pswitch_0
    const-string v3, "action"

    goto :goto_4

    :pswitch_1
    const-string v3, "category"

    goto :goto_4

    :pswitch_2
    const-string v3, "data"

    goto :goto_4

    :pswitch_3
    const-string v3, "type"

    goto :goto_4

    :cond_8
    if-eqz v15, :cond_b

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_9

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/m/x/a/gv/w$b;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lc/m/x/a/gv/w$b;->c:Z

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->d:Ljava/util/ArrayList;

    move-object v3, v0

    new-instance v4, Lc/m/x/a/gv/w$a;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lc/m/x/a/gv/w$a;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->e:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lc/m/x/a/gv/w;->e:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    const/4 v3, 0x1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    return v3

    :cond_b
    monitor-exit v12

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    move-object v3, v15

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
