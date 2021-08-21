# INSTRUCTIONS

## Start Spark Shell with Ignite libraries
```shell
$SPARK_HOME/bin/spark-shell --packages org.apache.ignite:ignite-spark-2.4:2.8.1
```

## Scala code instructions
```scala
import org.apache.ignite.spark.IgniteDataFrameSettings._
val CONFIG="/mnt/d/code/ignite_multi_data_region/src/main/resources/client1.xml"
val df = spark.read.format(FORMAT_IGNITE).option(OPTION_TABLE, "person").option(OPTION_CONFIG_FILE, CONFIG).load()
df.count
df.write.format(FORMAT_IGNITE).option(OPTION_CONFIG_FILE, CONFIG).option(OPTION_TABLE, "person2").option(OPTION_CREATE_TABLE_PRIMARY_KEY_FIELDS, "identifier").option(OPTION_CREATE_TABLE_PARAMETERS, "template=replicated,data_region=rule_engine_data_region").option(OPTION_SCHEMA, "PUBLIC").save()
```