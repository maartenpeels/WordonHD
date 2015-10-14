.class Lcom/urbanairship/Preferences$Preference;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/urbanairship/PreferencesResolver;

.field private final b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/PreferencesResolver;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->d:Z

    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/urbanairship/Preferences$Preference;->a:Lcom/urbanairship/PreferencesResolver;

    new-instance v0, Lcom/urbanairship/Preferences$Preference$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/Preferences$Preference$1;-><init>(Lcom/urbanairship/Preferences$Preference;)V

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->c()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/Preferences$Preference;->a:Lcom/urbanairship/PreferencesResolver;

    invoke-virtual {v2, v1, v0}, Lcom/urbanairship/PreferencesResolver;->a(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/Preferences$Preference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/Preferences$Preference;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->d:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->a:Lcom/urbanairship/PreferencesResolver;

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferencesResolver;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/urbanairship/Preferences$Preference;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/Preferences$Preference;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get preference "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from database. Falling back to cached value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->d:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "Preference already up to date"

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->d:Z

    if-nez p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->a:Lcom/urbanairship/PreferencesResolver;

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferencesResolver;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference;->a:Lcom/urbanairship/PreferencesResolver;

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferencesResolver;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
