.class public Lcom/urbanairship/Preferences;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/urbanairship/PreferencesResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/urbanairship/PreferencesResolver;

    invoke-direct {v0, p1}, Lcom/urbanairship/PreferencesResolver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Lcom/urbanairship/PreferencesResolver;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/PreferencesResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/Preferences;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/urbanairship/Preferences;->b:Lcom/urbanairship/PreferencesResolver;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/Preferences;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/Preferences;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/Preferences;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/Preferences$Preference;

    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/urbanairship/Preferences$Preference;

    iget-object v2, p0, Lcom/urbanairship/Preferences;->b:Lcom/urbanairship/PreferencesResolver;

    invoke-direct {v1, p1, v2}, Lcom/urbanairship/Preferences$Preference;-><init>(Ljava/lang/String;Lcom/urbanairship/PreferencesResolver;)V

    iget-object v2, p0, Lcom/urbanairship/Preferences;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences;->b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/Preferences$Preference;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences;->b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/Preferences$Preference;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, p2

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences;->b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/Preferences$Preference;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migrating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Found "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " preferences to migrate."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    if-lez v3, :cond_1

    new-array v4, v3, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "Adding "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " to the insert."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    aput-object v7, v4, v6

    move v6, v0

    goto :goto_0

    :cond_0
    const-string v0, "Inserting in bulk"

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/Preferences;->b:Lcom/urbanairship/PreferencesResolver;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/urbanairship/PreferencesResolver;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " rows inserted successfully."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration was a success, wiping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences;->b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/Preferences$Preference;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences;->b(Ljava/lang/String;)Lcom/urbanairship/Preferences$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/Preferences$Preference;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
