Heka
========

Log forwarding role for deploying and managing `Heka <http://heka.net>`_ with
systemd.

Variables
---------

You can use these variables to customize your Heka installations:

.. data :: heka_version

   The version of Heka to install

.. data :: heka_rpm_url

   The URL from which to download a Heka RPM. Default: Github release URL,
   constructed from ``heka_version``.

.. data :: collect_stats

   Whether or not to listen for statsd input. Default is false.

.. data :: systemd_interval

    Interval to wait between collecting logs from journalctl for components that
    do so (in seconds). Default is 10.

.. data :: systemd_units

    Which units to monitor the logs from for each role. Defaults to a few,
    depending on the role.

.. data :: heka_output

   How to output the data that Heka collects. Default is "file",
   valid options are stdout, file, elasticsearch, or kafka.

.. data :: stdout_message_matcher

    A string describing a conditional defining which messages Heka should
    output when outputting to stdout. Heka's documentation on this string can
    be found `here <http://hekad.readthedocs.org/en/v0.10.0/message_matcher.html>`_.
    Default is "TRUE", i.e. all messages.

.. data :: heka_file_output, heka_elasticsearch_output, heka_kafka_output

    These variables are dictionaries describing options for specific outputs.
    See the defaults.yml file for examples.
