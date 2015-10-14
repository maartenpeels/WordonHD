.class public abstract Lcom/urbanairship/util/DataManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/util/DataManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/util/DataManager$1;-><init>(Lcom/urbanairship/util/DataManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/urbanairship/util/DataManager;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/util/DataManager;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "Error opening writable database. Retrying..."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v2, 0x80

    const/4 v4, 0x1

    const-string v6, ", "

    const-string v5, "\'"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    const-string v3, ") "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    const-string v3, ");"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, ", "

    move-object v3, v6

    goto :goto_1

    :cond_1
    const-string v3, ", "

    move-object v3, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p0, p1, p3}, Lcom/urbanairship/util/DataManager;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/urbanairship/util/DataManager;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/util/DataManager;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "Error opening readable database. Retrying..."

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/util/DataManager;->a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Unable to insert into database"

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/urbanairship/util/DataManager;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Update Failed"

    invoke-static {v3, v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, -0x1

    if-nez p2, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-direct {p0}, Lcom/urbanairship/util/DataManager;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v1, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Unable to delete item from a database"

    invoke-static {v4, v3}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/util/DataManager;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    return-wide v0

    :catch_0
    move-exception v1

    const-string v2, "Unable to insert into database"

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    invoke-direct {p0}, Lcom/urbanairship/util/DataManager;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    const/4 v1, 0x3

    if-ge v9, v1, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Query Failed"

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
.end method

.method public final a(Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/util/List;
    .locals 5

    invoke-direct {p0}, Lcom/urbanairship/util/DataManager;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    :try_start_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    aget-object v4, p2, v3

    invoke-direct {p0, v2, v4}, Lcom/urbanairship/util/DataManager;->b(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, p2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Unable to insert into database"

    invoke-static {v3, v2}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "onUpgrade not implemented yet."

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
.end method

.method protected b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Unable to downgrade database"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/util/DataManager;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to close the database."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
