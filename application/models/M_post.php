<?php

    class M_post extends CI_Model{

        // function get_1_participants(){
        //     $q = $this->db->query("
        //             SELECT participants_id, participants_phone, participants_full_name
        //             FROM
        //                 arebisum_db.tbl_participants
        //             WHERE
        //                 participants_status = 1
        //                 AND participants_winner_doorprize = 0
        //             GROUP BY participants_phone
        //             ORDER BY RAND()
        //             LIMIT 1
        //         ");
        //     $data = $q->result();
        //     return $data;
        // }

        function get_1_participants(){
            $q = $this->db->query("
                    SELECT peserta_id, mobile_phone, nama_peserta, no_order_booking
                    FROM vistanet_db.intranet_one21_2021_peserta
                    WHERE intranet_one21_2021_peserta.active  = 1
                    GROUP BY mobile_phone
                    ORDER BY RAND()
                    LIMIT 1
                ");
            $data = $q->result();
            return $data;
        }

        // SELECT
        // distinct(intranet_one21_2021_GoodieBag100.email)
        // FROM
        // ciputra2_intranet.intranet_one21_2021_GoodieBag100,
        // ciputra2_intranet.intranet_one21_2021_peserta
        // where intranet_one21_2021_peserta.peserta_id=intranet_one21_2021_GoodieBag100.peserta_id



        // SELECT
        // distinct(intranet_one21_2021_peserta.email),
        // peserta_id,
        // nama_peserta
        // FROM
        // ciputra2_intranet.intranet_one21_2021_peserta
        // where intranet_one21_2021_peserta.promo_extra=2
        function get_goodiebag_participants(){
            $q = $this->db->query("
            SELECT
            distinct(intranet_one21_2021_GoodieBag100.email),
            intranet_one21_2021_peserta.peserta_id,
            intranet_one21_2021_peserta.nama_peserta
            FROM
            ciputra2_intranet.intranet_one21_2021_GoodieBag100,
            ciputra2_intranet.intranet_one21_2021_peserta
            where intranet_one21_2021_peserta.peserta_id=intranet_one21_2021_GoodieBag100.peserta_id

                ");
            $data = $q->result();
            return $data;
        }


        function get_5_participants(){
            $q = $this->db->query("
                  SELECT distinct(email),peserta_id, mobile_phone, nama_peserta, no_order_booking, goodiebag
                  FROM ciputra2_intranet.intranet_one21_2021_peserta
                  WHERE intranet_one21_2021_peserta.active  = 1
                  -- AND intranet_one21_2021_peserta.no_order_booking  != 'PROMO DOUBLE'
                  AND intranet_one21_2021_peserta.nama_kantor  != 'Indonesia'
                  -- AND intranet_one21_2021_peserta.status_pembelian_tiket  = 'Sudah Bayar'
                  AND intranet_one21_2021_peserta.jenis_peserta != 'SPONSOR'
                  -- AND intranet_one21_2021_peserta.goodiebag = 2

                  GROUP BY email
                  ORDER BY RAND()
                  LIMIT 25
                ");
            $data = $q->result();
            return $data;
        }


        function get_4_participants(){
            $q = $this->db->query("
                    SELECT peserta_id, mobile_phone, nama_peserta, no_order_booking, email
                    FROM ciputra2_intranet.intranet_one21_2021_peserta
                    WHERE intranet_one21_2021_peserta.active  = 1
                    -- AND intranet_one21_2021_peserta.no_order_booking  != 'PROMO DOUBLE'
                    AND intranet_one21_2021_peserta.nama_kantor  != 'Indonesia'
                    AND intranet_one21_2021_peserta.status_pembelian_tiket  = 'Sudah Bayar'
                    AND intranet_one21_2021_peserta.doorprize  != 1
                    GROUP BY mobile_phone
                    ORDER BY RAND()
                    LIMIT 4
                ");
            $data = $q->result();
            return $data;
        }


        function get_3_participants(){
            $q = $this->db->query("
                    SELECT peserta_id, mobile_phone, nama_peserta, no_order_booking, email
                    FROM ciputra2_intranet.intranet_one21_2021_peserta
                    WHERE intranet_one21_2021_peserta.active  = 1
                    -- AND intranet_one21_2021_peserta.no_order_booking  != 'PROMO DOUBLE'
                    AND intranet_one21_2021_peserta.nama_kantor  != 'Indonesia'
                    AND intranet_one21_2021_peserta.status_pembelian_tiket  = 'Sudah Bayar'
                    AND intranet_one21_2021_peserta.doorprize  != 1
                    GROUP BY mobile_phone
                    ORDER BY RAND()
                    LIMIT 3
                ");
            $data = $q->result();
            return $data;
        }


        function get_2_participants(){
            $q = $this->db->query("
                    SELECT peserta_id,
                    mobile_phone, 
                    nama_peserta,
                    no_order_booking
                    FROM vistanet_db.intranet_one21_2021_peserta
                    WHERE intranet_one21_2021_peserta.active = 1
                    GROUP BY mobile_phone
                    ORDER BY RAND()
                    LIMIT 2
                ");
            $data = $q->result();
            return $data;
        }

        // function get_5_participants(){
        //     $q = $this->db->query("
        //             SELECT participants_id, participants_phone, participants_full_name
        //             FROM
        //                 arebisum_db.tbl_participants
        //             WHERE
        //                 participants_status = 1
        //                 AND participants_winner_doorprize = 0
        //             GROUP BY participants_phone
        //             ORDER BY RAND()
        //             LIMIT 5
        //         ");
        //     $data = $q->result();
        //     return $data;
        // }

        // function insert_log_winner($data){
        //     $this->db = $this->load->database('default', TRUE);
        //     $q = $this->db->insert('tbl_log_drawing',$data);
        //     return $q;
        // }

        function insert_log_winner($data){
            $this->db = $this->load->database('default', TRUE);
            $q = $this->db->insert('intranet_one21_2021_Doorprize',$data);
            return $q;
        }

        function insert_log_winner_goodiebag100($data){
            $this->db = $this->load->database('default', TRUE);
            $q = $this->db->insert('intranet_one21_2021_GoodieBag100',$data);
            return $q;
        }

        function update_winner_participants($peserta_id){
            $q = $this->db->query("
                  UPDATE vistanet_db.intranet_one21_2021_peserta
                  SET intranet_one21_2021_peserta.doorprize = '1'
                  WHERE intranet_one21_2021_peserta.peserta_id = '".$peserta_id."'

                ");
            return $q;
        }

        function update_winner_goodiebag100($peserta_id){
            $q = $this->db->query("

                    UPDATE ciputra2_intranet.intranet_one21_2021_peserta
                    SET intranet_one21_2021_peserta.goodiebag = '1'
                    WHERE intranet_one21_2021_peserta.peserta_id = '".$peserta_id."'
                    -- and intranet_one21_2021_peserta.goodiebag= 2

                ");
            return $q;
        }

        // function cek_validation_email($email){
        //     $q = $this->db->query("
        //             SELECT participants_id
        //             FROM tbl_participants
        //             WHERE participants_mail LIKE '".$email."'
        //             LIMIT 1
        //         ");
        //     $data = $q->result();
        //     return $data;
        // }

    }

?>
